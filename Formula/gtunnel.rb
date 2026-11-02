class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.32/gtunnel-macos-arm64-v0.3.32.tar.gz"
      sha256 "116fb82944ded462d45399c10ce1057f9ff84293a42b25f82577267d5ef7605b"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.32/gtunnel-macos-intel-v0.3.32.tar.gz"
      sha256 "2670bc9cbe01e82623eeea698af1d2895f9323b40d2222a8a9930045b5b8f4c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.32/gtunnel-linux-arm64-v0.3.32.tar.gz"
      sha256 "bcf534efffab182b2298c4aadec2452b920a9918ef59c7cbc26ac6ea47c914e5"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.32/gtunnel-linux-amd64-v0.3.32.tar.gz"
      sha256 "d6685a21b402b89e711351afb5d6bf5bb56b716294db3d0dbab88b95cd1b735e"
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
