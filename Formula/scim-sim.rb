class ScimSim < Formula
  include Language::Python::Virtualenv

  desc "A SCIM directory simulator and management tool"
  homepage "https://github.com/Avinash-Kamath/scim-sim"
  url "https://files.pythonhosted.org/packages/1f/2d/1f00fbc4723df7fe9115d1c6d1d61f9bd3cd7e7def8380c60122d4824646/scim_sim-0.0.1.tar.gz"
  sha256 "066399b0adf774f2ee9f8ddbdb05f46eb47876391bd9c38e2a155c9d5f201504"
  license "MIT"

  depends_on "python"

  def install

      virtualenv_install_with_resources
      ohai <<~EOS
     ███████╗ ██████╗██╗███╗   ███╗    ███████╗██╗███╗   ███╗
     ██╔════╝██╔════╝██║████╗ ████║    ██╔════╝██║████╗ ████║
     ███████╗██║     ██║██╔████╔██║    ███████╗██║██╔████╔██║
     ╚════██║██║     ██║██║╚██╔╝██║    ╚════██║██║██║╚██╔╝██║
     ███████║╚██████╗██║██║ ╚═╝ ██║    ███████║██║██║ ╚═╝ ██║
     ╚══════╝ ╚═════╝╚═╝╚═╝     ╚═╝    ╚══════╝╚═╝╚═╝     ╚═╝
    installed successfully 🚀
            EOS
  end

  test do
    system bin/"scim-sim", "--help"
  end
end