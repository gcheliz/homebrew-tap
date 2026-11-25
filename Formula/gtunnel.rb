class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.47/gtunnel-macos-arm64-v0.3.47.tar.gz"
      sha256 "89342acb8486ce70ba4b37dc6ef18cf0ff9ed4c49ab0a5d3a10d71a0bd0b7a9e"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.47/gtunnel-macos-intel-v0.3.47.tar.gz"
      sha256 "02bf17856dc4c517f1d13dbd037c7e087fec6b3765f758b7a281e2f99e98a703"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.47/gtunnel-linux-arm64-v0.3.47.tar.gz"
      sha256 "05ed239333ca0d4eac214524100dac843a93998fab3b39badd211ed550c24e1c"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.47/gtunnel-linux-amd64-v0.3.47.tar.gz"
      sha256 "6160a37cb46e7e802498012daa7fcb21c7aa72e5a2f35be4ebe35fd58079178d"
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
