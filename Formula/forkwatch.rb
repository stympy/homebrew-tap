class Forkwatch < Formula
  desc "Discover meaningful patches hiding in GitHub forks"
  homepage "https://github.com/stympy/forkwatch"
  url "https://github.com/stympy/forkwatch.git",
      revision: "19e8c90a92d7ff7d76862aa18068ae9f2e69be7e"
  version "0.1.0"
  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"forkwatch", "."
  end

  test do
    assert_match "Usage", shell_output("#{bin}/forkwatch --help")
  end
end
