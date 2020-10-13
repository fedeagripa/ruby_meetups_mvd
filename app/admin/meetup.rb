ActiveAdmin.register Meetup do
  permit_params :backup_video, :scheduled

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :scheduled
      f.input :backup_video, as: :file
      f.actions
    end
  end

  show do
    attributes_table do
      row :scheduled
      row :backup_video do |meet|
        video_tag url_for(meet.backup_video), controls: true if meet.backup_video.present?
      end
    end
  end
end
