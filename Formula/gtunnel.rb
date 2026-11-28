class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.53/gtunnel-macos-arm64-v0.3.53.tar.gz"
      sha256 "54394a69d7037d67de831b50d99f06dd99287c6e4d2e42bc139078ddb3f0075a"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.53/gtunnel-macos-intel-v0.3.53.tar.gz"
      sha256 "a1ce9888f7f5f5b7103a8525e10aeb55d5972e5a0755793fc9b043ee47f7f600"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.53/gtunnel-linux-arm64-v0.3.53.tar.gz"
      sha256 "2a6c15518861d600c7f12c7e456f57a9f710a7b18cf767f31bfb297e1ecbd9c9"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.53/gtunnel-linux-amd64-v0.3.53.tar.gz"
      sha256 "da99e4dbf41298a9b06991a6110b61c5e65e938781e197ccfa4a625d09714e88"
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
