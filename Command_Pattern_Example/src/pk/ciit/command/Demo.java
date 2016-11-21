package pk.ciit.command;

public class Demo {

	public static void main(String[] args) {
		FileSystemReceiver fs = new WindowsFileSystemReceiver();
		
		OpenFileCommand openFileCommand = new OpenFileCommand(fs);
		FileInvoker invoker = new FileInvoker(openFileCommand);
		invoker.execute();
		
		WriteFileCommand writeFileCommand = new WriteFileCommand(fs);
		invoker = new FileInvoker(writeFileCommand);
		invoker.execute();
		
		CloseFileCommand closeFileCommand = new CloseFileCommand(fs);
		invoker = new FileInvoker(closeFileCommand);
		invoker.execute();
		
		fs = new UnixFileSystemReceiver();
		
		openFileCommand = new OpenFileCommand(fs);
		invoker = new FileInvoker(openFileCommand);
		invoker.execute();
		
		writeFileCommand = new WriteFileCommand(fs);
		invoker = new FileInvoker(writeFileCommand);
		invoker.execute();
		
		closeFileCommand = new CloseFileCommand(fs);
		invoker = new FileInvoker(closeFileCommand);
		invoker.execute();

	}

}
