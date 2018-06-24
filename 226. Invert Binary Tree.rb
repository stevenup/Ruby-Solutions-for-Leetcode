# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

# @param {TreeNode} root
# @return {TreeNode}
def invert_tree(root)
  return nil if root.nil?
  right_child = invert_tree(root.right)
  left_child = invert_tree(root.left)
  root.left = right_child
  root.right = left_child
  return root
end

p invert_tree([4,2,7,1,3,6,9])
