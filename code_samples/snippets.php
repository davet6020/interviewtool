<?php 

  $snip = new Snippet();
  print_r($snip->color(), $snip->green());
  print_r($snip->color());

  class Snippet {

    public function color()  {
      $arr[] = $this->blue();
      $arr[] = $this->yellow();
      return $arr;
    }

    private function blue() {
      return "blue function \n";
    }

    public function green() {
      return "green function \n";
    }

    private function yellow() {
      return "yellow function \n";
    }

  }

?>
