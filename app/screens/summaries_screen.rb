class SummariesScreen < PM::Screen
  title "Deposition Summaries"
  stylesheet SummariesScreenStylesheet

  def on_load
    @slide_over_control = append!(SlideOverControl, :slide_over_control).tap do |so|
      so.main_view = create! summary_list
      so.top_view = create! summary_list
      find(o.slide_bar).append(UILabel, :slide_bar_label)
    end
  end

  def summary_list
    @summary_table_screen_view ||= begin
      sts = SummariesTableScreen.new
      sts.view
    end
  end

  def will_animate_rotate(orientation, duration)
    find.all.reapply_styles
  end
end
