class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.27/gtunnel-macos-arm64-v0.3.27.tar.gz"
      sha256 "4fc2899815ee6fbe890f6df87664dd66291334612d92c6dccad2e0e50a0b2d7d"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.27/gtunnel-macos-intel-v0.3.27.tar.gz"
      sha256 "4ec790e28af0f5966346c81622e944690e4b4301772faa2f1616ed8b3e6f59e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.27/gtunnel-linux-arm64-v0.3.27.tar.gz"
      sha256 "d3eac2f897d16cac18f4de37c06a14b8a58becf16afe15f888df196438e98771"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.27/gtunnel-linux-amd64-v0.3.27.tar.gz"
      sha256 "95297d9f24a4a95dcba77c9a14b4be5f2dfb149395601f4e3c6ed44d2575664e"
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
