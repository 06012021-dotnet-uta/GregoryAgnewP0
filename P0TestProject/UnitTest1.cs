using System;
using Xunit;
using P0;
using P0BusisnessLogic;
using P0DomainLibrary;
using System.Text.RegularExpressions;
using System.Collections.Generic;
using P0AccessDatabase;

namespace P0TestProject
{
    public class UnitTest1
    {
        /// <summary>
        /// Tests sanitization against sql injection.
        /// </summary>
        [Fact]
        public void Test1()
        {
            //Arrange
            string strIn = "Robert'); DROP TABLE STUDENTS; --";

            //Act
            try
            {
                strIn = Regex.Replace(strIn, @"[^\w\.@-]", "",
                                     RegexOptions.None, TimeSpan.FromSeconds(1.5));
            }
            catch (RegexMatchTimeoutException)
            {
                strIn = String.Empty;
            }

            //Assert
            Assert.DoesNotContain(";", strIn);
        }

        /// <summary>
        /// Tests to see if spaces are removed from string.
        /// </summary>
        [Fact]
        public void Test2()
        {
            //Arrange
            string strIn = "adfaisda034 asdf023r i40a";

            //Act
            try
            {
                strIn = Regex.Replace(strIn, @"[^\w\.@-]", "",
                                     RegexOptions.None, TimeSpan.FromSeconds(1.5));
            }
            catch (RegexMatchTimeoutException)
            {
                strIn = String.Empty;
            }

            //Assert
            Assert.Equal("adfaisda034asdf023ri40a", strIn);
        }

        /// <summary>
        /// Tests to see what happens if string is empty.
        /// </summary>
        [Fact]
        public void Test3()
        {
            //Arrange
            string strIn = "~!~!";

            //Act
            try
            {
                strIn = Regex.Replace(strIn, @"[^\w\.@-]", "",
                                     RegexOptions.None, TimeSpan.FromSeconds(1.5));
            }
            catch (RegexMatchTimeoutException)
            {
                strIn = String.Empty;
            }

            //Assert
            Assert.Empty(strIn);
        }

        /// <summary>
        /// Tests to see how passwords might become less secure.
        /// </summary>
        [Fact]
        public void Test4()
        {
            //Arrange
            string strIn = "s$*#o)%*mu*/ch*/++for~`ha$%*vin'g;:;:,<a??go%&#*od/,/<>pass][{}{}{wor:[]d";

            //Act
            try
            {
                strIn = Regex.Replace(strIn, @"[^\w\.@-]", "",
                                     RegexOptions.None, TimeSpan.FromSeconds(1.5));
            }
            catch (RegexMatchTimeoutException)
            {
                strIn = String.Empty;
            }

            //Assert
            Assert.Equal("somuchforhavingagoodpassword", strIn);
        }

        /// <summary>
        /// Tests to see if le toucan has arrived or not.
        /// </summary>
        [Fact]
        public void Test5()
        {
            //Arrange
            string strIn = @"░░░░░░░░▄▄▄▀▀▀▄▄███▄
                            ░░░░░▄▀▀░░░░░░░▐░▀██▌
                            ░░░▄▀░░░░▄▄███░▌▀▀░▀█
                            ░░▄█░░▄▀▀▒▒▒▒▒▄▐░░░░█▌
                            ░▐█▀▄▀▄▄▄▄▀▀▀▀▌░░░░░▐█▄
                            ░▌▄▄▀▀░░░░░░░░▌░░░░▄███████▄
                            ░░░░░░░░░░░░░▐░░░░▐███████████▄
                            ░░░░░░░░░░░░░▐░░░░▐█████████████▄
                            ░░░░░░le░░░░░░▀▄░░░▐██████████████▄
                            ░░░░toucan░░░░░░░▀▄▄████████████████▄
                            ░░░░░has░░░░░░░░░░░░░░░░█▀██████▀▀▀▀█▄
                            ░░░░arrived░░░░░░░░░░░░░▄▄▀▄▀░▀██▀▀▀▄▄▄▀█
                            ░░░░░░░░░░░░░░░░░░▄▀▀▀▀▀░░░░██▌
                            ░░░░░░░░░░░░░░░░░░░░░░░░░░▄▀▄▀";

            //Act
            try
            {
                strIn = Regex.Replace(strIn, @"[^\w\.@-]", "",
                                     RegexOptions.None, TimeSpan.FromSeconds(1.5));
            }
            catch (RegexMatchTimeoutException)
            {
                strIn = String.Empty;
            }

            //Assert
            Assert.Equal("letoucanhasarrived", strIn);
        }

        /// <summary>
        /// Tests to see if TryGetValue is working as expected.
        /// </summary>
        [Fact]
        public void Test6()
        {
            //Arrange

            string _itemname = "Lulz";

            int currentamount2;

            Dictionary<string, int> _cartstuff = new();

            //Act
            bool isit = !_cartstuff.TryGetValue(_itemname, out currentamount2);


            //Assert
             Assert.True(isit);
        }

        /// <summary>
        /// Tests to see if I can fundamentally break the tester.  (spoiler alert: I can)
        /// </summary>
        [Fact]
        public void Test7()
        {
            //Arrange
            bool repeat1 = false;

            bool repeat2 = false;

            bool repeat3 = false;

            bool repeat4 = false;

            bool valid = true;

            int i = 0;

            //Act
            do
            {

                valid = true;
                i++;
                do
                {
                    i += 3;
                    do
                    {
                        valid = true;
                        i += 8;
                        do
                        {
                            i -= 2;
                            do
                            {
                                if (i % 3 == 3)
                                {
                                    goto last;
                                }
                                i = i * 2;
                                do
                                {
                                    if (i > 20)
                                    {
                                        //repeat1 = true;
                                        break;
                                    }
                                    i -= 20;
                                    do
                                    {
                                        if (i == 4)
                                        {
                                            valid = true;
                                            i += 4;
                                        }
                                        do
                                        {
                                            if (i <= -10)
                                            {
                                                i++;
                                                //repeat2 = true;
                                            }
                                            valid = true;
                                        } while (valid == false);
                                    } while (repeat4 == true);
                                } while (valid == false);
                            } while (repeat3 = true);
                        } while (valid == false);
                    } while (repeat2 = true);
                } while (valid == false);
            last:;
            } while (repeat1 = true);
            Assert.Equal(5, i);
        }

        /// <summary>
        /// Tests to make sure characters are not removed that shouldn't be.
        /// </summary>
        [Fact]
        public void Test8()
        {
            //Arrange
            string strIn = "asdfwea";

            //Act
            try
            {
                strIn = Regex.Replace(strIn, @"[^\w\.@-]", "",
                                     RegexOptions.None, TimeSpan.FromSeconds(1.5));
            }
            catch (RegexMatchTimeoutException)
            {
                strIn = String.Empty;
            }

            //Assert
            Assert.NotEmpty(strIn);
        }

        /// <summary>
        /// Tests to figure out which special characters aren't that special.
        /// </summary>
        [Fact]
        public void Test9()
        {
            //Arrange
            string strIn = "--/.*/**/.*/.";

            //Act
            try
            {
                strIn = Regex.Replace(strIn, @"[^\w\.@-]", "",
                                     RegexOptions.None, TimeSpan.FromSeconds(1.5));
            }
            catch (RegexMatchTimeoutException)
            {
                strIn = String.Empty;
            }

            //Assert
            Assert.Equal("--...",strIn);
        }

        /// <summary>
        /// Tests to see if I can decrypt a hidden face from seemingly unorginized characters.
        /// </summary>
        [Fact]
        public void Test10()
        {
            //Arrange
            string strIn = "(*&#-$#*(.*/-*+{}{}[]][}{}]";

            //Act
            try
            {
                strIn = Regex.Replace(strIn, @"[^\w\.@-]", "",
                                     RegexOptions.None, TimeSpan.FromSeconds(1.5));
            }
            catch (RegexMatchTimeoutException)
            {
                strIn = String.Empty;
            }

            //Assert
            Assert.Equal("-.-", strIn);
        }
    }
}
