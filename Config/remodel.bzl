def copy_out_of_genrule(genrule_name, objc_filenames):
  for objc_filename in objc_filenames:
    native.genrule(
      name = objc_filename,
      bash = 'cp $(location :{})/{} $OUT'.format(genrule_name, objc_filename),
      out = objc_filename,
    )

def generate_objc_filenames(value_objects):
  header_implementation_names = [generate_header_implementation_names(value_object) for value_object in value_objects]

  return [element for tupl in header_implementation_names for element in tupl]

def generate_header_implementation_names(value_object):
  filename_w_ext = value_object.split('/')[-1]
  filename = filename_w_ext.split('.')[0]

  return ('{}.h'.format(filename), '{}.m'.format(filename))

def exported_headers_from_filenames(objc_filenames):
  return [filename for filename in objc_filenames if filename.endswith('h')]

def srcs_from_filenames(objc_filenames):
  return [filename for filename in objc_filenames if filename.endswith('m')]
