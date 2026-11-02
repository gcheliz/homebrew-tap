class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.35/gtunnel-macos-arm64-v0.3.35.tar.gz"
      sha256 "551f53d234994d0628a5455b561096fbcaed597754623b696d4276d713daeb9d"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.35/gtunnel-macos-intel-v0.3.35.tar.gz"
      sha256 "b57d2ff14a08a8773f9ff98292528bb8882cab3939be2eaca0bfcdcc47eecb7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.35/gtunnel-linux-arm64-v0.3.35.tar.gz"
      sha256 "3c17e2daa71049e99098fd4093c011eca92f79669cf354ebc1aca57a6a32d17c"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.35/gtunnel-linux-amd64-v0.3.35.tar.gz"
      sha256 "9af18e0a842c47288c1756e97d5eea9a8612b616d94c2fa8a7b269f9a2a5af13"
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
