class CasesScreen < PM::TableScreen
  title "Depoz Cases"
  searchable placeholder: "Search Cases"
  stylesheet CasesScreenStylesheet

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
      cells: [
        { title: "McDonald's Coffee", action: :say_hi, arguments: { case: "Coffee stuffs" }},
        { title: "George v Georgia", action: :say_hi, arguments: { case: "Georgemania!" }},
      ]
    }]
  end

  def say_hi(args={})
    mp "Hi #{args[:case]}"
    open DepositionsScreen
  end

  # Remove the following if you're only using portrait
  def will_animate_rotate(orientation, duration)
    find.all.reapply_styles
  end
end
