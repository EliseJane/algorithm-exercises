def simplify_path(path)
  components = path.split("/").reject(&:empty?)
  directories = []

  components.each do |component|
    if component == "."
      next
    elsif component == ".."
      directories.pop
    else
      directories.push(component)
    end
  end

  return "/" + directories.join("/")
end

p simplify_path("/a/./b/../../c/")
p simplify_path("/home//foo/")
p simplify_path("/../")
p simplify_path("/home/")