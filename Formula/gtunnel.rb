class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.40/gtunnel-macos-arm64-v0.3.40.tar.gz"
      sha256 "b4d618324109a82636998ac513d8a96822d5e6ee502ccbe1fc71ec9be2b86870"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.40/gtunnel-macos-intel-v0.3.40.tar.gz"
      sha256 "859416666a727d5078954b3a7353b1a73fbb8b3a41456ab2c1751de0c6050b20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.40/gtunnel-linux-arm64-v0.3.40.tar.gz"
      sha256 "8e62e0d2bc39684dd82ce127858ca75e705b1d9821474e2a96590e4872667e57"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.40/gtunnel-linux-amd64-v0.3.40.tar.gz"
      sha256 "044fd51311cf843a0849acc2b4b3db5f6e721eba777e7b4a4ad5681cc7060f88"
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
