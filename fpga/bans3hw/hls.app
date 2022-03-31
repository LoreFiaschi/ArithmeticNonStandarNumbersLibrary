<project xmlns="com.autoesl.autopilot.project" name="bans3hw" top="ban_interface">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" profile="true" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../../test/vitis_test.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="src/ban_interface.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/ban_s3.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/ban_s3.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

