class SummariesScreenStylesheet < ApplicationStylesheet
  # Add your view stylesheets here. You can then override styles if needed,
  # example: include FooStylesheet

  def setup
    # Add sytlesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.white
  end

  def slide_over_control(st)
    st.frame = :full

    st.slide_bar_top_margin = 74
    st.slide_bar_top_snap_back_to = 174

    # Where the side_bar starts at
    st.slide_bar_center = rmq.device.screen_height / 2

    st.slide_bar_bottom_margin = 0
    st.slide_bar_bottom_snap_back_to = 130

    st.top_view_container_background_color = color.white

    # Other options
    # st.slide_bar_height = 40
    # st.auto_close = false
    # st.slide_bar_background_color = color.dark_gray
    # st.top_view_container_background_color = color.white
  end

  def slide_bar_label st
    st.frame = {l: 10, fr: 10, t: 2, fb: 2}
    st.text = "Drag me"
    st.color = color.white
    st.text_alignment = :center
  end
end
