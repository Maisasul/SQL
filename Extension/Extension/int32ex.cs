using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Extension
{
    static class int32ex
    {
        public static int Mirror(this int x)
        {
            char[] z = x.ToString().ToCharArray();
            Array.Reverse(z);
            return int.Parse(new string(z));
        }
    }
}
