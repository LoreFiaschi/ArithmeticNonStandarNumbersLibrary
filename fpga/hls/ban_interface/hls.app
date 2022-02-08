<project xmlns="com.autoesl.autopilot.project" top="ban_interface" name="ban_interface">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim"/>
    </Simulation>
    <files xmlns="">
        <file name="../src/ban_interface.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../src/ban.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../src/ban.cpp" sc="0" tb="false" cflags="-DFPGA_HLS" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

