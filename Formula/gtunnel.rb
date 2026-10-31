class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.26/gtunnel-macos-arm64-v0.3.26.tar.gz"
      sha256 "f7fe943261e251cd93fe3d26c105fe259446c52fba228012af32c74632a193dd"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.26/gtunnel-macos-intel-v0.3.26.tar.gz"
      sha256 "4a02accd22637b1ef4a07fa4afa56027872c6cc580f498b1b1ab2fa869547631"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.26/gtunnel-linux-arm64-v0.3.26.tar.gz"
      sha256 "b6d87f1b3ec5813f82cd4ba1a2319cf0b4189db58e7167f9f409fcafeafac867"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.26/gtunnel-linux-amd64-v0.3.26.tar.gz"
      sha256 "9c5aa4a3bbfca3d7e655fe17d248fcfb160a4507d70b5a35fe7a31eab6efcb27"
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
