class DepositionsScreen < PM::TableScreen
  title "Deposition Summaries"
  searchable placeholder: "Search Deposition Summaries"
  stylesheet DepositionsScreenStylesheet

  def on_load
    set_nav_bar_button :left, action: :nav_left_button, image: FIFontAwesomeIcon.cogIcon.imageWithBounds([[0,0],[25,25]], color: rmq.color.black)
    set_nav_bar_button :right, system_item: :add, action: :nav_right_button
  end

  def nav_left_button
    mp 'Left button'
  end

  def nav_right_button
    mp 'Right button'
  end

  def table_data
    [{
      title: "Jane Doe",
      cells: [
        { title: "1/12/14", action: :say_hi, arguments: { case: "Jane 12th" }},
        { title: "1/13/14", action: :say_hi, arguments: { case: "Jane 13th" }},
      ]
    },{
      title: "John Doe",
      cells: [
        { title: "1/12/14", action: :say_hi, arguments: { case: "John 12th" }},
        { title: "2/3/14", action: :say_hi, arguments: { case: "February!" }},
      ]
    }]
  end

  def say_hi(args={})
    mp "Hi #{args[:case]}"
  end

  # Remove the following if you're only using portrait
  def will_animate_rotate(orientation, duration)
    find.all.reapply_styles
  end
end
