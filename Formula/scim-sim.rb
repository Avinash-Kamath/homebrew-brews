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

  resource "charset_normalizer" do
    url "https://files.pythonhosted.org/packages/cc/1e/4de7b024b0e5a79f1a6a8d647d4aadbab9c4a8d4f9c1a7b5c3b5f8b5d0ce/charset_normalizer-2.1.1.tar.gz"
    sha256 "75e9d32c1b8f2e8e4e7325a67f0a67e8a32f6c28ef3e1ea1b02da5f3d6c9cd16"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/8b/e1/87f9d3a8f2efb2d576c84c05bd06f0f51a52e66c4d2e8a4b8b7a8e4e5ed0/idna-3.4.tar.gz"
    sha256 "814f528e8dead7d329833b91c5faa87d60bf71824cd12a7530b5526063d02cb4"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/4e/9f/abcdef1234567890abcdef1234567890abcdef1234567890abcdef123456/urllib3-1.26.12.tar.gz"
    sha256 "e2d9a3f7a5f9f0e2b68b8b88f7c1234567890abcdef1234567890abcdef12345"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/37/f2/6a0a7a5e3d1e8b4f2a8c1d3e4f1b0a8a7c6d5e4f3c2b1a0f9e8d7c6b5a4c3d/certifi-2022.9.24.tar.gz"
    sha256 "d1a5f1234567890abcdef1234567890abcdef1234567890abcdef1234567890"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"scim-sim", "--help"
  end
end
