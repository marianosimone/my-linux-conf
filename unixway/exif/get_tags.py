import pyexiv2


def show_tags_info(file_path):
    metadata = pyexiv2.ImageMetadata(file_path)
    metadata.read()
    for tag in metadata.exif_keys:
        print "%s: %s" % (tag, metadata[tag].value)
