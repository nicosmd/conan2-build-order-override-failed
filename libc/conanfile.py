from conan import ConanFile

class BasicConanfile(ConanFile):
    name = "libc"
    version = "0.1"
    description = "A basic recipe"
    license = "<Your project license goes here>"
    homepage = "<Your project homepage goes here>"

    def requirements(self):
        self.requires("libb/0.1")
        self.requires("zlib/1.2.13", override=True)

    def generate(self):
        pass

    def build(self):
        pass

    def package(self):
        pass
