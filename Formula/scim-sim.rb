class ScimSim < Formula
  include Language::Python::Virtualenv

  desc "A SCIM directory simulator and management tool"
  homepage "https://github.com/Avinash-Kamath/scim-sim"
  url "https://files.pythonhosted.org/packages/1f/2d/1f00fbc4723df7fe9115d1c6d1d61f9bd3cd7e7def8380c60122d4824646/scim_sim-0.0.1.tar.gz"
  sha256 "066399b0adf774f2ee9f8ddbdb05f46eb47876391bd9c38e2a155c9d5f201504"
  license "MIT"

  depends_on "python"

  resource "requests" do
    url "https://files.pythonhosted.org/packages/63/70/2bf7780ad2d390a8d301ad0b550f1581eadbd9a20f896afe06353c2a2913/requests-2.32.3.tar.gz"
    sha256 "55365417734eb18255590a9ff9eb97e9e1da868d4ccd6402399eaf68af20a760"
  end

  resource "faker" do
    url "https://files.pythonhosted.org/packages/55/8f/40d002bed58bd6b79bf970505582b769fc975afcacc62c2fe1518d5729c2/faker-36.1.1.tar.gz"
    sha256 "7cb2bbd4c8f040e4a340ae4019e9a48b6cf1db6a71bda4e5a61d8d13b7bef28d"
  end


  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"scim-sim", "--help"
  end
end
