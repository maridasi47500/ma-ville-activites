require "google_drive"

class Document < ApplicationRecord
def filename=(uploaded_io)
File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
  file.write(uploaded_io.read)
end
somefilename=uploaded_io.original_filename
write_attribute(:filename, uploaded_io.original_filename)
session = GoogleDrive::Session.from_config("config.json")

## Gets list of remote files.
#session.files.each do |file|
#p file.title
#end
hey="#{Rails.root.to_s}/public/uploads/#{somefilename}"

  # Uploads a local file.
session.upload_from_file(hey, somefilename, convert: false)

# # Downloads to a local file.
#file = session.file_by_title(somefilename)
#file.download_to_file(hey)
#
#  # Updates content of the remote file.
#file.update_from_file(hey)
end
def filename
read_attribute(:filename)
end
end
