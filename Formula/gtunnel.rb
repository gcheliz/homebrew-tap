class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.44/gtunnel-macos-arm64-v0.3.44.tar.gz"
      sha256 "74a92aec43694916cd4b0cf93d423e08e05dd312f7892a52aef04894491971aa"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.44/gtunnel-macos-intel-v0.3.44.tar.gz"
      sha256 "4731165bd70c973b4ba880389a6588bb503276a98abb900e98021b0be6eb030b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.44/gtunnel-linux-arm64-v0.3.44.tar.gz"
      sha256 "0908ed32ce2ff7f9065db65090f03de95b430a379a465d192dfe95dff1c25f2e"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.44/gtunnel-linux-amd64-v0.3.44.tar.gz"
      sha256 "930fb448ddd3f3d36d824da1eb59edf84ee3e53898b23f9a7efe1bd695a784a7"
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
