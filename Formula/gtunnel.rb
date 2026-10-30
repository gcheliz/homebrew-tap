class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.17/gtunnel-macos-arm64-v0.3.17.tar.gz"
      sha256 "bf851c4c61e73fc6d06ad655f59422acd31cf4a2497dc028b3fe6326ce43eaa6"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.17/gtunnel-macos-intel-v0.3.17.tar.gz"
      sha256 "fa758052c42c84bba6b75e7e3d8e216147c961009b3906740138dc0525179847"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.17/gtunnel-linux-arm64-v0.3.17.tar.gz"
      sha256 "64bd24142132a9877706226e94760c3a51c7413bcca603dde66e659737b1bf7f"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.17/gtunnel-linux-amd64-v0.3.17.tar.gz"
      sha256 "77010ca2e1af3076a823adde3b7a3e996096faa0a32d85c2e670bb0c23d347a8"
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
