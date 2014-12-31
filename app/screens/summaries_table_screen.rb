class SummariesTableScreen < PM::TableScreen
  title "Deposition Summaries"
  searchable placeholder: "Search Summaries"

  def on_load
  end

  def table_data
    [{
      # possibly a custom title_view here
      # https://github.com/clearsightstudio/ProMotion/wiki/Reference%3A-All-available-table_data-options
      cells: [
        {
          title: "George Tells it like it is!",
          subtitle: "He identifies something about the case it's very important and needs to be handled in a clear way",
          search_text: "Exhibit A Page 23",
          cell_style: UITableViewCellStyleSubtitle,
          accessory_type: :disclosure_button
        }, {
          title: "Another title here",
          subtitle: "More stuff lorem ipsum dolor amet identifies something about the case that is very important and needs to be handled in a clear way",
          search_text: "Exhibit A Page 24",
          cell_style: UITableViewCellStyleSubtitle,
          accessory_type: :disclosure_button
        }, {
          title: "Third title here",
          subtitle: "My name is Rhoda Morgenstern. I was born in the Bronx, New York in December of 1941. I've always felt responsible for World War II. The first thing I remember liking that liked me back was food. I had a bad puberty; it lasted seventeen years. I'm a high school graduate. I went to art school. My entrance exam was on a book of matches. I decided to move out of the house when I was twenty-four. My mother still refers to this as the time I ran away from home. Eventually, I ran to Minneapolis, where it's cold and I figured I'd keep better. Now I'm back in Manhattan. New York, this is your last chance!",
          search_text: "Exhibit B Page 24",
          cell_style: UITableViewCellStyleSubtitle,
          accessory_type: :disclosure_button
        }
      ]
    }]
  end

  def will_animate_rotate(orientation, duration)
    find.all.reapply_styles
  end
end
