<project xmlns="com.autoesl.autopilot.project" name="ban" top="main">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim"/>
    </Simulation>
    <files xmlns="">
        <file name="../src/ban.cpp" sc="0" tb="false" cflags="-DFPGA_HLS -std=c++17" csimflags="" blackbox="false"/>
        <file name="../src/ban.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../debug/main.cpp" sc="0" tb="false" cflags="-DFPGA_HLS -std=c++17" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

