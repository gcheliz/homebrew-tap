class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.7/gtunnel-macos-arm64-v0.3.7.tar.gz"
      sha256 "ef6e395df0dee1d60f3aa2620d6a0a4f7e6a64fbcd30855424a50563b0615ee6"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.7/gtunnel-macos-intel-v0.3.7.tar.gz"
      sha256 "5d413520dd52b0c77907e9fa80c079702dee1f62ab46272368ee9eebdc3d831e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.7/gtunnel-linux-arm64-v0.3.7.tar.gz"
      sha256 "93d32107f41d874f36dab88127c6953967494a588047cb1cb70744c1747e033e"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.7/gtunnel-linux-amd64-v0.3.7.tar.gz"
      sha256 "65751cd373eb98f697af51b98de6caba6aa73dfd1930912f88ce9703f437f5fe"
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
