package pk.ciit.command;

public class UnixFileSystemReceiver implements FileSystemReceiver {

	@Override
	public void openFile() {
		System.out.println("Opening file in UNIX OS");

	}

	@Override
	public void writeFile() {
		System.out.println("Writing File In UNIX OS");

	}

	@Override
	public void closeFile() {
		System.out.println("Closing File in UNIX OS");

	}

}
