class DepositionsScreen < PM::TableScreen
  title "Deposition Summaries"
  searchable placeholder: "Search Depositions"
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
      title: "January 2nd, 2015",
      cells: [
        { title: "Sherlock Holmes", action: :say_hi, arguments: { case: "Jan Sherklock" }},
        { title: "John Doe", action: :say_hi, arguments: { case: "Jan John" }},
      ]
    },{
      title: "July 3rd, 2014",
      cells: [
        { title: "Hugh Jackman", action: :say_hi, arguments: { case: "Jul Hugh" }},
        { title: "George Lucas", action: :say_hi, arguments: { case: "Jul Lucas" }},
        { title: "John Doe", action: :say_hi, arguments: { case: "Jul John" }},
      ]
    }]
  end

  def say_hi(args={})
    mp "Hi #{args[:case]}"
    open SummariesScreen
  end

  # Remove the following if you're only using portrait
  def will_animate_rotate(orientation, duration)
    find.all.reapply_styles
  end
end
