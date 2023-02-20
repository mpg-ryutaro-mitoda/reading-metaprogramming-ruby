# Q1.
# 次の動作をする F1 class を実装する
# - 1. "def"キーワードを使わずにF1クラスにhelloインスタンスメソッドを定義すること
#      戻り値は "hello" であること
# - 2. "def"キーワードを使わずにF1クラスにworldクラスメソッドを定義すること
#      戻り値は "world" であること
# - 3. 定義していないメソッドを実行したときにエラーを発生させず、"NoMethodError"という文字列を返すこと
# - 4. `F1.new.respond_to?(定義していないメソッド名)` を実行したときにtrueを返すこと

class F1
  define_method(:hello) { 'hello' }

  define_singleton_method(:world) { 'world' }

  def method_missing(_name, *args)
    'NoMethodError'
  end

  def respond_to_missing?(_sym, _include_private)
    true
  end
end

# Q2.
# 次の動作をする F2 classを実装する
# - 1. 実行するとhiインスタンスメソッドを定義するadd_hiメソッドを定義すること

class F2
  define_method(:add_hi) do
    def hi # この中だとdefine_methodが使えない
    end
  end
end
