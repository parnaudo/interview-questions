<?php
/*

Your previous Python content is preserved below:

"""
Find the path that gives the maximum sum using one number from each level. Each element of the path should be adjacent to the previous one.
 

1-                4
2-            2       -1
3-        3       7       9
4-    20      0       3       99
"""

def 
*/

$tree=new BinaryTree();
$tree->insert(8);
$tree->insert(5);
$tree->insert(4);
$tree->insert(9);

$tree->insert(7);

$tree->insert(11);
$tree->insert(13);

$tree->insert(10);
print_r($tree);
class Node
{
    public $value;    // contains the node item
    public $left;     // the left child BinaryNode
    public $right;     // the right child BinaryNode
 
    public function __construct($item) {
        $this->value = $item;
        // new nodes are leaf nodes
        $this->left = null;
        $this->right = null;
    }
    public function dump() {
        if ($this->left !== null) {
            $this->left->dump();
        }
        var_dump($this->value);
        if ($this->right !== null) {
            $this->right->dump();
        }
    }
}
 
class BinaryTree
{
    protected $root; // the root node of our tree
 
    public function __construct() {
        $this->root = null;
    }
 
    public function isEmpty() {
        return $this->root === null;
    }
    public function insert($item) {
        $node = new Node($item);
        if ($this->isEmpty()) {
            // special case if tree is empty
            $this->root = $node;
        }
        else {
            // insert the node somewhere in the tree starting at the root
            $this->insertNode($node, $this->root);
        }
    }
   
    protected function insertNode($node, &$subtree) {
    	$node_value=$node->value;
    	$subtree_value=$subtree->value;
    	print "SUBTREE node $node_value subtree $subtree_value \n";
    	//print_r($subtree);
        if ($subtree === null) {
            // insert node here if subtree is empty
            $subtree = $node;
        }
        else {
            if ($node->value > $subtree->value) {
            	 print "printing right\n";
                // keep trying to insert right
                $this->insertNode($node, $subtree->right);
            }
            else if ($node->value < $subtree->value) {
                // keep trying to insert left
                print "printing left\n";
                $this->insertNode($node, $subtree->left);
            }
            else {
                // reject duplicates
            }
        }
    }
	public function traverse() {
        // dump the tree rooted at "root"
        $this->root->dump();
    }
}

