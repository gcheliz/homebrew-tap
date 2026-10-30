class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.11/gtunnel-macos-arm64-v0.3.11.tar.gz"
      sha256 "bf6ce605bb84272d9aecb9966cb6cdbe6493b82426408306caca21df9a840d57"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.11/gtunnel-macos-intel-v0.3.11.tar.gz"
      sha256 "7f7c6f0348d312778bca560e14299763d34a82d21fc310bcd00fbe3d74e64462"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.11/gtunnel-linux-arm64-v0.3.11.tar.gz"
      sha256 "2b3e766b78bb569efe9edacb16cb3a18616c90bf4ca41bc0e275758926fd22aa"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.11/gtunnel-linux-amd64-v0.3.11.tar.gz"
      sha256 "47bccf4614c102ec431b047a9b69c405854a1b61dbedee463e3bfc8eba0c22f8"
    end
  end

  def install
    bin.install "gtunnel"
    generate_completions_from_executable(bin/"gtunnel", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gtunnel --version")
  end
end
