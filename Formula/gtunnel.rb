class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.68/gtunnel-macos-arm64-v0.2.68.tar.gz"
      sha256 "2e94d839c6ccba42e8013e39a2ac216374a735d4e29afdc57d3b3c8fd6a52744"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.68/gtunnel-macos-intel-v0.2.68.tar.gz"
      sha256 "7fbb8ecd22bfca1e66099198ab1dda56eb1c222efe4fe73c353625d2283dac29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.68/gtunnel-linux-arm64-v0.2.68.tar.gz"
      sha256 "0a9dc1baf385b7d1786cc1e442596bafb0d8b1503f7f6191b6cb9190477e00ea"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.68/gtunnel-linux-amd64-v0.2.68.tar.gz"
      sha256 "0565dd9e7cdd091de65f8462cac05a64236c89f3893de83bfb4e8eb1f4c89fbe"
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
