class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.3/gtunnel-macos-arm64-v0.3.3.tar.gz"
      sha256 "435e44728a11f8b0f2d9485c0372af5888ce07bc56f4409cb22356e6ba03f96c"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.3/gtunnel-macos-intel-v0.3.3.tar.gz"
      sha256 "bd0f891855383bfef3a0f3b0990332a88e5351d8006d9b7891162f4e7c9986c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.3/gtunnel-linux-arm64-v0.3.3.tar.gz"
      sha256 "0c658fae1ec34d599415282373279331ab96c6b4d7c6a950575f87e07e2b0364"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.3/gtunnel-linux-amd64-v0.3.3.tar.gz"
      sha256 "1bbf944ad9ce2670bdf7715a03b7218f42f5c2e545b80ab113fedbca7cc14914"
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
