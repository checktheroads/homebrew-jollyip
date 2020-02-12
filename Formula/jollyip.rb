class JollyIP < Formula
  include Language::Python::Virtualenv

  desc "Scan an IP range, but happily."
  homepage "https://github.com/checktheroads/jollyip"
  url "https://files.pythonhosted.org/packages/b6/97/cfd63e6e20c79313e5ab74794f6d0480b7592a8a2cf0d8cf40a6ac0a7d53/jollyip-0.0.2.tar.gz"
  sha256 "da982205c6fc8ff14d0adae326b7bd1bc7911c21d411e2abf1c7a17847da4d98"
  head "https://github.com/checktheroads/jollyip.git"

  # TODO: If you're submitting an existing package, make sure you include your
  #       bottle block here.

  depends_on "python@3.6"

  resource "click" do
    url "https://files.pythonhosted.org/packages/fa/37/45185cb5abbc30d7257104c434fe0b07e5a195a6847506c074527aa599ec/Click-7.0-py2.py3-none-any.whl#sha256=2335065e6395b9e67ca716de5f7526736bfa6ceead690adf616d925bdc622b13"
    sha256 "2335065e6395b9e67ca716de5f7526736bfa6ceead690adf616d925bdc622b13"
  end

  resource "icmplib" do
    url "https://files.pythonhosted.org/packages/35/c4/87ae023b9fd6d6d6191ccda4ddcd1e4ba7b19afe206d84788ed3892bee9e/icmplib-1.0.2.tar.gz#sha256=5b80a5182e31235bea57847c40f12dd1027625301d6afdb871acf156888b5100"
    sha256 "5b80a5182e31235bea57847c40f12dd1027625301d6afdb871acf156888b5100"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/c9/dc/45cdef1b4d119eb96316b3117e6d5708a08029992b2fee2c143c7a0a5cc5/colorama-0.4.3-py2.py3-none-any.whl#sha256=7d73d2a99753107a36ac6b455ee49046802e59d9d076ef8e47b61499fa29afff"
    sha256 "7d73d2a99753107a36ac6b455ee49046802e59d9d076ef8e47b61499fa29afff"
  end

  resource "pprintpp" do
    url "https://files.pythonhosted.org/packages/4e/d1/e4ed95fdd3ef13b78630280d9e9e240aeb65cc7c544ec57106149c3942fb/pprintpp-0.4.0-py2.py3-none-any.whl#sha256=b6b4dcdd0c0c0d75e4d7b2f21a9e933e5b2ce62b26e1a54537f9651ae5a5c01d"
    sha256 "b6b4dcdd0c0c0d75e4d7b2f21a9e933e5b2ce62b26e1a54537f9651ae5a5c01d"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/e7/dd/f1713bc6638cc3a6a23735eff6ee09393b44b96176d3296693ada272a80b/typing_extensions-3.7.4.1.tar.gz#sha256=091ecc894d5e908ac75209f10d5b4f118fbdb2eb1ede6a63544054bb1edb41f2"
    sha256 "091ecc894d5e908ac75209f10d5b4f118fbdb2eb1ede6a63544054bb1edb41f2"
  end

  def install
    virtualenv_install_with_resources
  end

  # TODO: Add your package's tests here
end