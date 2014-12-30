class CasesScreen < PM::TableScreen
  title "Cases"
  searchable placeholder: "Search cases"
  stylesheet CasesScreenStylesheet

  def on_load
    set_nav_bar_button :left, title: "Settings", action: :nav_left_button
    set_nav_bar_button :right, title: "Right", action: :nav_right_button
  end

  def nav_left_button
    mp 'Left button'
  end

  def nav_right_button
    mp 'Right button'
  end

  def table_data
    [{
      title: "Cases",
      cells: [
        { title: "McDonald's Coffee", action: :say_hi, arguments: { case: "Coffee stuffs" }},
        { title: "George v Georgia", action: :say_hi, arguments: { case: "Georgemania!" }},
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
