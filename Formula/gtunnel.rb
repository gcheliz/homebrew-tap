class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.4/gtunnel-macos-arm64-v0.3.4.tar.gz"
      sha256 "364633eed014e5fa18add25e9eeaa40bad13838fe40571db8ce789a631a78345"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.4/gtunnel-macos-intel-v0.3.4.tar.gz"
      sha256 "54384d236befe07ecc180a40985c466f512e64ab0979f8441906f1897292704f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.4/gtunnel-linux-arm64-v0.3.4.tar.gz"
      sha256 "312d83247d149d094e221d1594710e683ea7b09337e5c1cad28e78daa1198f0e"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.4/gtunnel-linux-amd64-v0.3.4.tar.gz"
      sha256 "55ba64828fc6b0546ef53c300a42b9d8630dee467cc373247fe127b6e56df4e5"
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
