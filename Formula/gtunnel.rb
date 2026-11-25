class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.46/gtunnel-macos-arm64-v0.3.46.tar.gz"
      sha256 "1359a107f2376ae9e05d350064d62a3b5f63fcc19ee134ba72c95478a4e298bd"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.46/gtunnel-macos-intel-v0.3.46.tar.gz"
      sha256 "545828b143b2acb706aff00b6249890ca0edc15497cb234e4b5c5294c98ae6fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.46/gtunnel-linux-arm64-v0.3.46.tar.gz"
      sha256 "c6ea2356d1043ae872aab16372f0b8f931bf4e00f32173413237fcdaa310a83e"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.46/gtunnel-linux-amd64-v0.3.46.tar.gz"
      sha256 "038acc635a975ed7b246e1e50c578f4c47be2a7cebf372bfb9c64939751fc0e5"
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
