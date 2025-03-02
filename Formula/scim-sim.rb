class ScimSim < Formula
  include Language::Python::Virtualenv

  desc "A SCIM directory simulator and management tool"
  homepage "https://github.com/Avinash-Kamath/scim-sim"
  url "https://files.pythonhosted.org/packages/1f/2d/1f00fbc4723df7fe9115d1c6d1d61f9bd3cd7e7def8380c60122d4824646/scim_sim-0.0.1.tar.gz"
  sha256 "066399b0adf774f2ee9f8ddbdb05f46eb47876391bd9c38e2a155c9d5f201504"
  license "MIT"

  depends_on "python"

  resource "requests" do
    url "https://files.pythonhosted.org/packages/01/62/9e7fa8bfae1f79b4d0ebaf8f1f1b57122fbbd5e216b6876e5897f4eb5f2c3bd/requests-2.28.2.tar.gz"
    sha256 "98b1b2782e3c6c6353fbd1b6b007f81522fbbd5e216b6876e5897f4eb5f2c3bd"
  end

  resource "Faker" do
    url "https://files.pythonhosted.org/packages/source/F/Faker/Faker-18.0.0.tar.gz"
    sha256 "02c9769b2d28982d06c22b39e2428b3414c14e18a8687c3a0f24f105a1af36e6"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"scim-sim", "--help"
  end
end
