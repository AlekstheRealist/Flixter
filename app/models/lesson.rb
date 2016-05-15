class Lesson < ActiveRecord::Base
  belongs_to :section
  mount_uploader :video, VideoUploader

  #def video
  #  "https://firehose-lessons-ken.s3.amazonaws.com/uploads/lesson/video/1/SampleVideo_1280x720_1mb.mp4"
  #end

  include RankedModel
  ranks :row_order, :with_same => :section_id

  def next_lesson
    lesson = section.lessons.where("row_order > ?", self.row_order).rank(:row_order).first

    return lesson
    #if the next lesson in the database is there
      #show next lesson
    #else
      #return nil
    #end
  end
end
