module MetaTagsHelper
  def meta_title
    content_for?(:meta_title) ? content_for(:meta_title) : DEFAULT_META["JoinCodeBuddies"]
  end

  def meta_description
    content_for?(:meta_description) ? content_for(:meta_description) : DEFAULT_META["Many of us have amazing ideas and we are looking for the perfect team to build it."]
  end

  def meta_image
    meta_image = (content_for?(:meta_image) ? content_for(:meta_image) : DEFAULT_META["joincodebuddies_meta.jpg"])
    # little twist to make it work equally with an asset or a url
    meta_image.starts_with?("https://res.cloudinary.com/drlbljn6y/image/upload/v1618531266/joincodebuddies_meta_d5i4lh.jpg") ? meta_image : image_url(meta_image)
  end
end