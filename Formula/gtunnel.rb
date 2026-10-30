class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.0/gtunnel-macos-arm64-v0.3.0.tar.gz"
      sha256 "ec5d26c62f0ae2268789245f3aecee2c7eb05ff0387cb534d509e82ebf812879"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.0/gtunnel-macos-intel-v0.3.0.tar.gz"
      sha256 "d35144afdc4ec628c4ac86ad56bf1036e928a05ff3c291499cbcc08c0464bc63"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.0/gtunnel-linux-arm64-v0.3.0.tar.gz"
      sha256 "8a572ff84df8b4bc0faf9a9457fd2357e26441d58a1e485aee99f8acce144f5f"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.0/gtunnel-linux-amd64-v0.3.0.tar.gz"
      sha256 "15c7cc6c6f9010b934c9d47374d9d297c531e481d7746146c7bb7f88e918ed56"
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
