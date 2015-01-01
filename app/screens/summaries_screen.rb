class SummariesScreen < PM::Screen
  title "Deposition Summaries"
  stylesheet SummariesScreenStylesheet

  def on_load
    @slide_over_control = append!(SlideOverControl, :slide_over_control).tap do |soc|
      soc.main_view = create! summary_list
      soc.top_view = create! summary_list
      find(soc.slide_bar).append(UILabel, :slide_bar_label)
    end
  end

  def summary_list
    @summary_table_screen_view ||= begin
      sts = SummariesTableScreen.new
      sts.parent_screen = self # Automatically a weak reference
      sts.view
    end
  end

  def will_animate_rotate(orientation, duration)
    find.all.reapply_styles
  end
end
