configuration test
{
    file Test
    {
        Ensure = 'Present'
        DestinationPath = 'c:\test.txt'
        Contents = 'test'
    }
}