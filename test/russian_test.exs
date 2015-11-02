defmodule RussianTest do
  use Russian.TestCase

  describe "use macro" do
    defmodule Foo  do
      use Russian

      def about do
        transliterate("Транслитерация для букв русского алфавита")
      end
    end

    it "should import transliterate method to Foo" do
      assert Foo.about == "Transliteratsiya dlya bukv russkogo alfavita"
    end
  end

  describe "transliterate" do
    it "should method exist and properly transliterate" do
      assert Russian.transliterate("Это просто некий текст") == "Eto prosto nekiy tekst"
    end
  end
end
