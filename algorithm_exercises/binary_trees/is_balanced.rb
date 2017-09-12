def is_balanced(root)
    return true if !root || (!root.left && !root.right)
    if !root.left
        if !root.right.right && !root.right.left
            return true
        else
            return false
        end
    elsif !root.right
        if !root.left.right && !root.left.left
            return true
        else
            return false
        end
    end
    is_balanced(root.left)
    is_balanced(root.right)
end

def is_balanced_dnc(root)
    return true if root.nil?

    if (height(root.left) - height(root.right)).abs > 1
        return false
    else
        is_balanced(root.left) && is_balanced(root.right)
    end
end

def height(root)
    return 0 if root.nil?
    return [height(root.left), height(root.right)].max + 1
end