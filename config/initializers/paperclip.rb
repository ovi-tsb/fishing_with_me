# config/initializers/paperclip.rb
Paperclip::Attachment.default_options[:url] = 'fishing_with_me.s3.amazonaws.com'
Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'