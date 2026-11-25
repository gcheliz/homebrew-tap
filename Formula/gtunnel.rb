class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.42/gtunnel-macos-arm64-v0.3.42.tar.gz"
      sha256 "d2b80e1e1e91715af33bbea7dfe03bb055f652779c060c9adda89423254d7299"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.42/gtunnel-macos-intel-v0.3.42.tar.gz"
      sha256 "c962c912be6c6e46411034704487bffaadf877bc20e9e1af6f2209ef64b5ffc2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.42/gtunnel-linux-arm64-v0.3.42.tar.gz"
      sha256 "8b1b2fb12cbeca74c87ff21ea324fb6c591bb8d9513bb6043f8f4b153ac8b26d"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.42/gtunnel-linux-amd64-v0.3.42.tar.gz"
      sha256 "1cbf57f50d318f85ee191451705db7dd8bdf5c6fdc3697b893e0a15435d24378"
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
