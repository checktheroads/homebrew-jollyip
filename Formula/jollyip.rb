class Jollyip < Formula
  include Language::Python::Virtualenv

  desc "Scan an IP range, but happily."
  homepage "https://github.com/checktheroads/jollyip"
  url "https://files.pythonhosted.org/packages/39/00/f5d69f744bafc751e4278a78df4156aa2317ecf0f4a9f3e5d15e6056434a/jollyip-0.0.3.tar.gz"
  sha256 "2f49c69c3d4f2cfd564ee7fb2764069baeac0c9fb7804b63ecf76bc98102414e"

  depends_on "python3"

  resource "click" do
    url "https://files.pythonhosted.org/packages/f8/5c/f60e9d8a1e77005f664b76ff8aeaee5bc05d0a91798afd7f53fc998dbc47/Click-7.0.tar.gz"
    sha256 "5b94b49521f6456670fdb30cd82a4eca9412788a93fa6dd6df72c94d5a8ff2d7"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/82/75/f2a4c0c94c85e2693c229142eb448840fba0f9230111faa889d1f541d12d/colorama-0.4.3.tar.gz"
    sha256 "e96da0d330793e2cb9485e9ddfd918d456036c7149416295932478192f4436a1"
  end

  resource "icmplib" do
    url "https://files.pythonhosted.org/packages/35/c4/87ae023b9fd6d6d6191ccda4ddcd1e4ba7b19afe206d84788ed3892bee9e/icmplib-1.0.2.tar.gz"
    sha256 "5b80a5182e31235bea57847c40f12dd1027625301d6afdb871acf156888b5100"
  end

  resource "pprintpp" do
    url "https://files.pythonhosted.org/packages/06/1a/7737e7a0774da3c3824d654993cf57adc915cb04660212f03406334d8c0b/pprintpp-0.4.0.tar.gz"
    sha256 "ea826108e2c7f49dc6d66c752973c3fc9749142a798d6b254e1e301cfdbc6403"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/a5/c9/bc8ed45b392b94cb654a6463c9f6fbe341b6f2d64d332c6c975dbf6c6cae/rich-0.3.3.tar.gz"
    sha256 "604edf76a2a7d40c7ecc9af5ae41cee3da3e99532c8d0aa54cc42e017ee7f63a"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/e7/dd/f1713bc6638cc3a6a23735eff6ee09393b44b96176d3296693ada272a80b/typing_extensions-3.7.4.1.tar.gz"
    sha256 "091ecc894d5e908ac75209f10d5b4f118fbdb2eb1ede6a63544054bb1edb41f2"
  end

  def install
    venv = virtualenv_create(libexec, "python3")
    
    def venv.custom_install(path)
      bin_before = Dir[@venv_root/"bin/*"].to_set
      
      @formula.system @venv_root/"bin/pip", "install", "-v", "--ignore-installed", path

      bin_after = Dir[@venv_root/"bin/*"].to_set
      bin_to_link = (bin_after - bin_before).to_a
      @formula.bin.install_symlink(bin_to_link)
    end
    
    venv.custom_install buildpath
  end

  test do
    false
  end
end