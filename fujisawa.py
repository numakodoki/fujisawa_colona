import pandas as pd
import sys
import re


def fujisawa(infile):
    df = pd.read_csv(infile, encoding='utf8')
    df = df.loc[~df['No'].isna(), :]
    df.set_index('No', inplace=True)
    df = df.filter(regex='^\d+', axis=0)
    outfile = infile.replace('.csv', '_1.csv')
    df.to_csv(outfile, encoding='utf8', index=True)


def main(infile):
    fujisawa(infile)


if __name__ == '__main__':
    infile = sys.argv[1]
    main(infile)
