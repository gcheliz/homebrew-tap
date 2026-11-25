class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.48/gtunnel-macos-arm64-v0.3.48.tar.gz"
      sha256 "beb9b44d358824ea4979726a5f83079697beed30580db61913393b6808043b3c"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.48/gtunnel-macos-intel-v0.3.48.tar.gz"
      sha256 "429bff4407ff0bf3f5f8770d2e58489cc90ee9a7db3757115026aa27aebdafc4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.48/gtunnel-linux-arm64-v0.3.48.tar.gz"
      sha256 "2922de95f1eada1cdae85c5143e4402fa173113fdbc5509d43c9e5dc2dbc114c"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.3.48/gtunnel-linux-amd64-v0.3.48.tar.gz"
      sha256 "060acd5964e1821bd73bd4c0552357510468f27db1d91539de8373bba78590e7"
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
