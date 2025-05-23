//Problem #1
#include <iostream>
#include <iomanip>
#include <vector>
using namespace std;

int main() {
    vector<int> nums(10);
    for (int i = 0; i < 10; ++i) {
        cin >> nums[i];
    }
    int m = nums[6];
    double a = m * 2.75;
    cout << "The multiplier is " << m 
         << "! Lulu’s allowance is $ " 
         << fixed << setprecision(2) << a << "!";
    return 0;
}
//Problem #2
#include <iostream>
#include <string>
using namespace std;

int main() {
    int N; 
    cin >> N;
    for (int i = 0; i < N; ++i) {
        int t; string s;
        cin >> t >> s;
        int cnt = 0;
        for (char c : s) {
            if (c >= 'A' && c <= 'Z') ++cnt;
        }
        cout << cnt << "\n";
    }
    return 0;
}
//Problem #3
#include <iostream>
#include <iomanip>
using namespace std;

int main() {
    int a, b, c;
    cin >> a >> b >> c;
    double avg = (a + b + c) / 3.0;
    cout << fixed << setprecision(2) << avg;
    return 0;
}
//Problem #4
#include <iostream>
#include <algorithm>
using namespace std;

int main() {
    int a, b, c;
    cin >> a >> b >> c;
    int orig[3] = {a, b, c};
    int sorted[3] = {a, b, c};
    sort(sorted, sorted + 3);

    cout << sorted[0] << " " << sorted[1] << " " << sorted[2] << "\n";
    cout << orig[0]   << " " << orig[1]   << " " << orig[2];
    return 0;
}
//Problem #5
#include <iostream>
#include <vector>
using namespace std;

int main() {
    int N;
    while (cin >> N) {
        vector<int> a(N);
        for (int i = 0; i < N; ++i) {
            cin >> a[i];
        }
        bool first = true;
        for (int i = N - 1; i >= 0; --i) {
            if (a[i] % 2 == 0) {
                if (!first) cout << " ";
                cout << a[i];
                first = false;
            }
        }
        cout << "\n";
    }
    return 0;