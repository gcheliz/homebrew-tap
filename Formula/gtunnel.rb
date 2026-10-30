class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.9/gtunnel-macos-arm64-v0.3.9.tar.gz"
      sha256 "4aeb4578e8d7d1df28e6b3b39526826124f435fd0858e17b6e2e78c4b60196d8"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.9/gtunnel-macos-intel-v0.3.9.tar.gz"
      sha256 "dd38c3606ae1bca4700846034d613db45abaf49a5c4eb734e31be2173673e377"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.9/gtunnel-linux-arm64-v0.3.9.tar.gz"
      sha256 "3e0901f5c87357b3b449a3f8d8ab27df829e41cf290bf57882c40fe1863d9c95"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.9/gtunnel-linux-amd64-v0.3.9.tar.gz"
      sha256 "aad92e70866721f8c36d0f3b95d2a00e8b8f8990d0afd40adc46c9c4fecfd8a5"
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
