<h1>WEB assembly</h1>

<h2>INSTALL</h2>
	<ul>
		<li>sudo apt-get install nasm</li>
		32-bits <li>sudo apt-get install gcc-multib g++-multilib</li>
		<li>sudo apt install gdb</li>
	</ul>

<h2>COMANDOS</h2>
	<p>Makefile</p>
        <ul>
        <li>objdump -t hello.o</li>
		<li>objdump -s hello.o</li>
		<li>objdump -S hello.o</li>
		<li>objdump -M intel -d hello.o</li>
		<li>gdb ./hello</li>
		<li>layout next</li>
		<li>run</li>
		<li>Linux SYSCALL </li>
        </ul>
<h2>C</h2>
        <ul>
                <li>gcc file.c -o file</li>
                <li>objdump -S file</li>
				<li>objdump -M intel -d file</li>
                
        </ul>

<h2>Linux</h2>
        <ul>
				<li> Linux SYSCALL </li>
				<li> man 7 signal </li>
				<li> KILL -signal process </li>
                <li>echo $?</li>
                <li>htop</li>
				<li>fg</li>
				<li>bg</li>
        </ul>